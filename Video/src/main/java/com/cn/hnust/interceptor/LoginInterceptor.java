/*package com.cn.hnust.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

    // TODO 执行Handler之后执行此方法
    // 作系统
    // 统一异常处理，进行方法执行性能监控，在preHandle中设置一个时间点，在afterCompletion设置一个时间，两个时间点的差就是执行时长
    // 实现 系统 统一日志记录
    @Override
    public void afterCompletion(HttpServletRequest request,
            HttpServletResponse response, Object object, Exception exception)
            throws Exception {

    }

    // 如果需要向页面提供一些公用 的数据或配置一些视图信息，使用此方法实现 从modelAndView入手
    // TODO 在执行Handler返回modelAndView之前执行
    @Override
    public void postHandle(HttpServletRequest request,
            HttpServletResponse response, Object object,
            ModelAndView modelAndView) throws Exception {

    }

    // TODO 在执行Handler之前执行
    // 用于用户认证校验、用户权限校验
    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object object) throws Exception {
        // 获取请求路径
        String url = request.getRequestURI();
        if (url.indexOf("Login.action") >= 0) {
            // 如果是登陆公开地址，则放行
            return true;
        }
        if (request.getSession().getAttribute("username") != null) {
            // 判断用户名在session中是否存在，存在则放行
            return true;
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
        // 否则拦截
        return false;
    }

}*/