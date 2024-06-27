package com.shu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.shu.entity.dto.Account;
import com.shu.entity.vo.request.ConfirmResetVO;
import com.shu.entity.vo.request.EmailRegisterVO;
import com.shu.entity.vo.request.EmailResetVO;
import com.shu.entity.vo.request.user.MaterialPage;
import com.shu.entity.vo.response.DisplayAccountByAdminVO;
import com.shu.entity.vo.response.DisplayAccountByUserVO;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.List;

/**
 * 用户账户服务接口，继承了IService<Account>和UserDetailsService接口，
 * 提供了用户注册、登录、信息查询、密码重置等操作。
 */
public interface AccountService extends IService<Account>, UserDetailsService {

    /**
     * 根据用户名或邮箱查找账户。
     *
     * @param text 用户名或邮箱文本。
     * @return 符合条件的账户。
     */
    Account findAccountByNameOrEmail(String text);

    /**
     * 发送注册邮箱验证码。
     *
     * @param type 验证码类型。
     * @param email 注册邮箱。
     * @param address 验证码发送地址。
     * @return 发送结果。
     */
    String registerEmailVerifyCode(String type, String email, String address);

    /**
     * 注册邮箱账号。
     *
     * @param info 注册信息。
     * @return 注册结果。
     */
    String registerEmailAccount(EmailRegisterVO info);

    /**
     * 重置邮箱账号密码。
     *
     * @param info 重置密码信息。
     * @return 重置结果。
     */
    String resetEmailAccountPassword(EmailResetVO info);

    /**
     * 确认重置操作。
     *
     * @param info 确认重置信息。
     * @return 确认结果。
     */
    String resetConfirm(ConfirmResetVO info);

    /**
     * 用户查询自己的信息。
     *
     * @param username 用户名。
     * @return 用户信息。
     * @throws UsernameNotFoundException 用户名未找到异常。
     */
    DisplayAccountByUserVO userInfo(String username) throws UsernameNotFoundException;

    /**
     * 管理员查询用户信息。
     *
     * @param username 用户名。
     * @return 用户信息。
     * @throws UsernameNotFoundException 用户名未找到异常。
     */
    DisplayAccountByAdminVO adminInfo(String username) throws UsernameNotFoundException;

    /**
     * 管理员通过邮箱查询用户信息。
     *
     * @param email 用户邮箱。
     * @return 用户信息。
     * @throws UsernameNotFoundException 用户名未找到异常。
     */
    DisplayAccountByAdminVO adminInfoByEmail(String email) throws UsernameNotFoundException;

    /**
     * 通过用户名查询用户信息。
     *
     * @param name 用户名。
     * @return 用户信息。
     */
    String userInfoByName(String name);

    /**
     * 更新用户信息，包括密码和积分。
     *
     * @param username 用户名。
     * @param newPassword 新密码。
     * @param password 原密码。
     * @param points 积分。
     * @return 更新结果。
     */
    String updateUserInfo(String username, String newPassword, String password, Integer points);

    /**
     * 获取所有用户账户信息分页列表。
     *
     * @param page 当前页码。
     * @param pageSize 每页数量。
     * @return 分页列表。
     */
    MaterialPage getAllAccounts(Integer page, Integer pageSize);

    /**
     * 更新用户头像。
     *
     * @param username 用户名。
     * @param newAvatarUrl 新头像URL。
     * @param newAvatarUuid 新头像UUID。
     * @return 更新结果。
     */
    boolean updateAvatar(String username, String newAvatarUrl,String newAvatarUuid);

    /**
     * 删除用户及其相关信息。
     *
     * @param email 用户邮箱。
     * @return 删除结果。
     */
    String deleteUserAndRelatedInfo(String email);

    /**
     * 查询排名前N的用户账户。
     *
     * @param i 排名前N的数字。
     * @return 用户账户列表。
     */
    List<Account> findTopNAccounts(int i);

    /**
     * 用户登录。
     *
     * @param username 用户名。
     * @return 登录结果。
     */
    String signIn(String username);

    /**
     * 更新用户积分。
     *
     * @param userEmail 用户邮箱。
     * @param points 新积分。
     * @return 更新结果。
     */
    //更新用户积分
    String updateUserPoints(String userEmail,Integer points);
}
