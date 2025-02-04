package codegym.c10.thuchanhreal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountCalculatorServlet", value = "/discount")
public class DiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String desc = req.getParameter("description");
        String price = req.getParameter("listPrice");
        String discount = req.getParameter("discountPercent");

        System.out.println(desc + " " + price + " " + discount);
        int priceId = Integer.parseInt(price);
        int discountId = Integer.parseInt(discount);
        double discountCal = (double)(priceId * discountId)/100;
        double amountDiscount = priceId - discountCal;
        PrintWriter out = resp.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + "Gia ban dau: " + priceId + " discount: " + discountCal  + " Gia phai tra: "+ amountDiscount +"</h1>");
        out.println("</body></html>");

    }
}
