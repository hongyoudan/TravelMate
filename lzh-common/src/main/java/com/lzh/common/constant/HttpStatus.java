package com.lzh.common.constant;

/**
 * @Description: 返回状态码
 */
public class HttpStatus
{
    /**
     * 操作成功
     */
    public static final int SUCCESS = 200;

    /**
     * 未授权
     */
    public static final int UNAUTHORIZED = 401;

    /**
     * 访问受限，授权过期
     */
    public static final int FORBIDDEN = 403;

    /**
     * 系统内部错误
     */
    public static final int ERROR = 500;
    /**
     * 系统警告消息
     */
    public static final int WARN = 601;
}
