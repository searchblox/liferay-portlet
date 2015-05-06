package com.liferay.config;
 
import com.liferay.portal.kernel.portlet.ConfigurationAction;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.Constants;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portlet.PortletPreferencesFactoryUtil;
 
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.PortletPreferences;
import javax.portlet.PortletSession;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
 
/**
 * <a href="ConfigurationActionImpl.java.html"><b><i>View Source</i></b></a>
 *
 * @author Mark Wong
 *
 */
public class ConfigurationActionImpl implements ConfigurationAction {
 
    public void processAction(PortletConfig portletConfig,
            ActionRequest actionRequest, ActionResponse actionResponse)
            throws Exception {
 
        String cmd = ParamUtil.getString(actionRequest, Constants.CMD);
 
        if (!cmd.equals(Constants.UPDATE)) {
            return;
        }
 
        String email = ParamUtil.getString(actionRequest, "email");
        String subject = ParamUtil.getString(actionRequest, "subject");
 
        String portletResource = ParamUtil.getString(actionRequest,"portletResource");
        PortletPreferences preferences = PortletPreferencesFactoryUtil.getPortletSetup(actionRequest, portletResource);
 
        preferences.setValue("email", email);
        preferences.setValue("subject", subject);
 
        preferences.store();
 
        PortletSession portletSession = actionRequest.getPortletSession();
        SessionMessages.add(actionRequest, portletConfig.getPortletName()+ ".doConfigure");
 
    }
 
    public String render(PortletConfig portletConfig,
            RenderRequest renderRequest, RenderResponse renderResponse)
            throws Exception {
 
        return "/html/Config.jsp";
    }
 
}