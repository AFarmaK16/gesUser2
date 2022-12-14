package servlets;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.messaging.saaj.packaging.mime.util.OutputUtil;

import beans.Utilisateur;
import dao.UtilisateurDao;
import forms.AddUserForm;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/add")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_AJOUT_UTILISATEUR = "/WEB-INF/ajouterUtilisateur.jsp";
	private static final String VUE_LIST_UTILISATEUR = "/WEB-INF/listerUtilisateur.jsp";
	/**
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getServletContext().getRequestDispatcher(VUE_AJOUT_UTILISATEUR).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AddUserForm form= new AddUserForm(request);
		request.setAttribute("statusMessage", form.getStatusMessage());
		if(form.ajouter()) {
			response.sendRedirect("list");
			//getServletContext().getRequestDispatcher(VUE_LIST_UTILISATEUR).forward(request, response);
		}
	
		else {
			request.setAttribute("status", form.isStatus());
			request.setAttribute("statusMessage", form.getStatusMessage());
			request.setAttribute("utilisateur", form.getUtilisateur());
			request.setAttribute("erreurs", form.getErreurs());
			getServletContext().getRequestDispatcher(VUE_AJOUT_UTILISATEUR).forward(request, response);
		}
	}

}
