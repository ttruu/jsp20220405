package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener01
 *
 */
@WebListener
public class ServletContextListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
     
    	// 어플리케이션 종료될 때
    	System.out.println("1번 jsp 앱 종료 되었음 !!!!!!!!");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
       
    	// 어플리케이션 시작될 때
    	System.out.println("1번 jsp앱 시작되었음 @#@#@$%#$#$@$#");
    }
	
}
