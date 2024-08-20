import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ReviewServlet"})
public class ReviewServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Review.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Mengambil data dari formulir
        String productName = request.getParameter("productName");
        String reviewerName = request.getParameter("reviewerName");
        String reviewDate = request.getParameter("reviewDate");
        String reviewContent = request.getParameter("reviewContent");
        String rating = request.getParameter("rating");

        // Logika untuk menyimpan data review (misalnya, menyimpannya ke dalam file atau sesi)
        // Untuk demo, kita hanya menampilkan data di konsol
        System.out.println("Product Name: " + productName);
        System.out.println("Reviewer Name: " + reviewerName);
        System.out.println("Review Date: " + reviewDate);
        System.out.println("Review Content: " + reviewContent);
        System.out.println("Rating: " + rating);

        // Mengarahkan kembali ke halaman review.jsp
        request.getRequestDispatcher("Review.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Sekai Blog Reviews Page";
    }
}
