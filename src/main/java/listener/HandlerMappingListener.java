package listener;


import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import controller.AjaxController;
import controller.Controller;




/**
 * 
 * �꽌踰꾧� start�맆�븣 媛곴컖�쓽 Controller�쓽 援ы쁽泥대�� 誘몃━ �깮�꽦�빐�꽌 Map���옣 
 */

@WebListener
public class HandlerMappingListener implements ServletContextListener {

   
    public void contextInitialized(ServletContextEvent e)  { 


        Map<String, AjaxController> ajaxMap = new HashMap<String, AjaxController>();
        Map<String, Class<?> > ajaxClzMap = new HashMap<String, Class<?>>();


        //~.properties?�뙆�씪 濡쒕뵫

		System.out.println("�빖�뱾�윭 留듯븨");

       ResourceBundle rb1 = ResourceBundle.getBundle("ajaxMapping"); //resources/ajaxMapping.properties
       ResourceBundle rb2 = ResourceBundle.getBundle("frontMapping"); //resources/frontMapping.properties
       
        try {
        	
	        for(String key : rb1.keySet()) {
	        	String value = rb1.getString(key);

	        	//System.out.println(key +" = " + value );
	        	
	        	//String�쓽 臾몄옄�뿴�쓣 Controller�쓽 媛앹껜濡� �깮�꽦�빐�빞�븳�떎!!!
	        	//Class<?>�뒗 �뼱�뼡 媛앹껜媛� 媛�吏�怨� �엳�뒗 �븘�뱶, �깮�꽦�옄, 硫붿냼�뱶�쓽 �젙蹂대�� �룞�쟻�쑝濡� 媛��졇�삱�닔 �엳�룄濡� �룄��二쇰뒗 媛앹껜�씠�떎 - reflection 媛쒕뀗
	    		//reflection 媛쒕뀗�� �룞�쟻�쑝濡� 利� �떎�뻾�룄以묒뿉 �븘�슂�븳 媛앹껜瑜� �쟻�젅�븯寃� �깮�꽦�븯怨� 洹� 媛앹껜媛� 媛�吏�怨� �엳�뒗 �깮�꽦�옄�굹 硫붿냼�뱶瑜� 
	    		//�룞�쟻�쑝濡� �샇異쒗빐以꾩닔 �엳�룄濡� �븯�뒗 媛쒕뀗�쓣 reflection�씠�씪怨� �븯怨� �옄諛붿뿉�꽌 �씠 媛쒕뀗�쓣 �쟻�슜�빐 �넃�� API媛� Class<?> �씠�떎.
	        	Class<?> className = Class.forName(value);
	        	AjaxController controller = (AjaxController)className.getDeclaredConstructor().newInstance();

	        	System.out.println("controller = " + controller);

	        	ajaxMap.put(key, controller);
	        	ajaxClzMap.put(key, className);

	        }

	        Map<String, Controller> map = new HashMap<String, Controller>();
	        Map<String, Class<?> > clzMap = new HashMap<String, Class<?>>();
	        
	        for(String key : rb2.keySet()) {
	        	String value = rb2.getString(key);

	        	//System.out.println(key +" = " + value );

	        	//String�쓽 臾몄옄�뿴�쓣 Controller�쓽 媛앹껜濡� �깮�꽦�빐�빞�븳�떎!!!
	        	//Class<?>�뒗 �뼱�뼡 媛앹껜媛� 媛�吏�怨� �엳�뒗 �븘�뱶, �깮�꽦�옄, 硫붿냼�뱶�쓽 �젙蹂대�� �룞�쟻�쑝濡� 媛��졇�삱�닔 �엳�룄濡� �룄��二쇰뒗 媛앹껜�씠�떎 - reflection 媛쒕뀗
	    		//reflection 媛쒕뀗�� �룞�쟻�쑝濡� 利� �떎�뻾�룄以묒뿉 �븘�슂�븳 媛앹껜瑜� �쟻�젅�븯寃� �깮�꽦�븯怨� 洹� 媛앹껜媛� 媛�吏�怨� �엳�뒗 �깮�꽦�옄�굹 硫붿냼�뱶瑜�
	    		//�룞�쟻�쑝濡� �샇異쒗빐以꾩닔 �엳�룄濡� �븯�뒗 媛쒕뀗�쓣 reflection�씠�씪怨� �븯怨� �옄諛붿뿉�꽌 �씠 媛쒕뀗�쓣 �쟻�슜�빐 �넃�� API媛� Class<?> �씠�떎.


	        	Class<?> className = Class.forName(value);
	        	Controller controller = (Controller)className.getDeclaredConstructor().newInstance();
	        	
	        	System.out.println("f controller = " + controller);
	        	
	        	map.put(key, controller);
	        	clzMap.put(key, className);
	        }
	        
	        // //紐⑤뱺 �쁺�뿭�뿉�꽌 map�쓣 �궗�슜�븷�닔 �엳�룄濡� ServletContext�쁺�뿭�뿉 ���옣�븳�떎.
	        ServletContext application = e.getServletContext();
	        application.setAttribute("ajaxMap", ajaxMap);
	        application.setAttribute("ajaxClzMap", ajaxClzMap);

	        application.setAttribute("map", map);
	        application.setAttribute("clzMap", clzMap);


	    	application.setAttribute("path", application.getContextPath() ); //${path}
	        
        }catch (Exception ex) {
			ex.printStackTrace();
		}

    }
}







