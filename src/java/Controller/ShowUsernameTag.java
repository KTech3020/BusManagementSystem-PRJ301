package Controller;

import java.io.IOException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.StringWriter;

public class ShowUsernameTag extends SimpleTagSupport {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    StringWriter sw = new StringWriter();

    @Override
    public void doTag() throws JspException, IOException {
        if (name != null) {
            {
                JspWriter out = getJspContext().getOut();
                out.println("Welcome, " + name);
            }
        } else {
            getJspBody().invoke(sw);
            getJspContext().getOut().println(sw.toString());
        }
    }
}
