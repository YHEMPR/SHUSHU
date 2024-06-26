package com.shu.controller;

import com.shu.entity.RestBean;
import com.shu.entity.Result;
import com.shu.entity.dto.Account;
import com.shu.entity.vo.request.SignINVO;
import com.shu.entity.vo.request.UpdateAvatarVO;
import com.shu.entity.vo.request.user.MaterialPage;
import com.shu.entity.vo.request.admin.UpdateUserInfoVO;
import com.shu.entity.vo.response.DisplayAccountByAdminVO;
import com.shu.service.AccountService;
import com.shu.service.impl.BookReviewService;
import com.shu.service.impl.MaterialServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.function.Supplier;

/**
 * 用户管理员相关操作的控制器。
 * 包括用户信息查看、修改、删除等操作。
 */
@Slf4j
@Validated
@RestController
@RequestMapping("/admin")
@Tag(name = "用户管理员相关操作", description = "包括用户管理员相关信息修改等操作。")
public class AdminOperatorController {

    @Resource
    private AccountService accountService; // 用户服务
    @Autowired
    private BookReviewService bookReviewService; // 书评服务
    @Autowired
    private MaterialServiceImpl materialService; // 材料服务

    /**
     * 管理员查看指定用户的个人信息。
     *
     * @param username 用户名
     * @return 用户的详细信息
     */
    @GetMapping("/userInfo")
    @Operation(summary = "查看用户信息")
    public RestBean<DisplayAccountByAdminVO> getUserInfo(@RequestParam String username){
        DisplayAccountByAdminVO userVO= accountService.adminInfo(username);
        return RestBean.success(userVO);
    }

    /**
     * 管理员查看自己的个人信息。
     *
     * @param username 管理员用户名
     * @return 管理员的详细信息
     */
    @GetMapping("/adminInfo")
    @Operation(summary = "查看管理员信息")
    public RestBean<DisplayAccountByAdminVO> getAdminInfo(@RequestParam String username){
        DisplayAccountByAdminVO adminVo = accountService.adminInfo(username);
        return RestBean.success(adminVo);
    }

    /**
     * 通过邮箱查看管理员信息。
     *
     * @param email 管理员邮箱
     * @return 管理员的详细信息
     */
    @GetMapping("/adminInfoByEmail")
    @Operation(summary = "查看管理员信息")
    public RestBean<DisplayAccountByAdminVO> getAdminInfoByEmail(@RequestParam String email){
        DisplayAccountByAdminVO adminVo = accountService.adminInfoByEmail(email);
        return RestBean.success(adminVo);
    }

    /**
     * 修改用户信息，包括用户名、密码和积分。
     * 如果新用户名不同，需要更新相关服务中的用户名。
     *
     * @param request 包含旧用户名、新用户名、新密码和新积分的信息
     * @return 修改结果提示
     */
    @PostMapping("/updateUserInfo")
    @Operation(summary = "修改用户信息")
    public RestBean<String> updateUserInfo(@RequestBody UpdateUserInfoVO request){
        // 如果用户新用户名存在且不等于旧用户名
        log.info("oldUsername:{},newUsername:{}",request.getOldUserName(),request.getNewUserName());
        if(request.getNewUserName() != null && !request.getNewUserName().equals(request.getOldUserName())){
            bookReviewService.updateUsername(request.getOldUserName(),request.getNewUserName());
            materialService.updateUsername(request.getOldUserName(),request.getNewUserName());
        }
        String newUserInfo = accountService.updateUserInfo(request.getOldUserName(), request.getNewUserName(),
                request.getNewPassword(), request.getPoints());
        return RestBean.success("成功修改用户信息");
    }

    /**
     * 更新用户的头像。
     *
     * @param updateAvatarVO 包含用户名、新头像URL和UUID的信息
     * @return 修改结果提示
     */
    @PostMapping("/updateAvatar")
    @Operation(summary = "修改头像")
    public RestBean<String> updateAvatar(@RequestBody @Valid UpdateAvatarVO updateAvatarVO) {
        boolean isSuccess = accountService.updateAvatar(updateAvatarVO.getUsername(),
                updateAvatarVO.getNewAvatarUrl(),updateAvatarVO.getNewAvatarUuid());
        if (isSuccess) {
            return RestBean.success("成功修改用户头像");
        } else {
            return RestBean.failure(400,"修改头像失败");
        }
    }

    /**
     * 获取所有用户和管理员的分页信息。
     *
     * @param page 当前页码
     * @param pageSize 每页数量
     * @return 用户和管理员的分页信息
     */
    @GetMapping("/showAllAccounts")
    @Operation(summary = "显示所有用户和管理员")
    public Result showAllAccount(@RequestParam(defaultValue = "1") Integer page,
                                 @RequestParam(defaultValue = "10") Integer pageSize){
        MaterialPage materialPage = accountService.getAllAccounts(page,pageSize);
        return Result.success(materialPage);
    }

    /**
     * 删除用户及其相关的信息。
     *
     * @param email 用户邮箱
     * @return 删除结果提示
     */
    @GetMapping("/deleteUser")
    @Operation(summary = "删除用户")
    public RestBean<String> deleteUser(@RequestParam String email) {
        String result = accountService.deleteUserAndRelatedInfo(email);
        return result == null ? RestBean.success("用户删除成功") : RestBean.failure(400, result);
    }

    /**
     * 展示积分最高的N个用户。
     *
     * @return 积分最高的用户列表
     */
    @GetMapping("/showTopNAccounts")
    @Operation(summary = "展示积分最高的10个用户")
    public Result showTopNAccounts(){
        List<Account> topAccounts = accountService.findTopNAccounts(10);
        return Result.success(topAccounts);
    }

    /**
     * 用户每日签到。
     *
     * @param sign 签到信息
     * @return 签到结果提示
     */
    @PostMapping("/signIn")
    public RestBean<String> signIn(@RequestBody SignINVO sign) {
        String result = accountService.signIn(sign.getUsername());

        if (result.equals("签到失败，用户今日已经签到")) {
            return RestBean.failure(400,result);
        }

        if (result.equals("用户不存在")) {
            return RestBean.failure(400,result); // 返回用户不存在的错误信息
        }

        return RestBean.success(result);
    }

    /**
     * 对于返回字符串作为错误信息的方法进行统一处理。
     *
     * @param action 产生结果或错误信息的行动
     * @param <T> 返回类型
     * @return 带有结果或错误信息的RestBean
     */
    private <T> RestBean<T> messageHandle(Supplier<String> action){
        String message = action.get();
        if(message == null)
            return RestBean.success();
        else
            return RestBean.failure(400, message);
    }
}
