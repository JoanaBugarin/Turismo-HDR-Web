package services;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import model.Atraccion;
import model.Usuario;
import persistence.AtraccionDAO;
import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;

public class BuyAttractionService {

AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
	UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();

	public Map<String, String> buy(String nombre, Integer attractionId) throws SQLException {
		Map<String, String> errors = new HashMap<String, String>();

		Usuario user = usuarioDAO.findByNombre(nombre);
		Atraccion atraccion = atraccionDAO.find(attractionId);

		if (!atraccion.hayCupo()) {
			errors.put("atraccion", "No hay cupo disponible");
		}
		if (!user.puedeComprar(atraccion)) {
			errors.put("user", "No tienes dinero suficiente y no tienes tiempo suficiente");
		}
		

		if (errors.isEmpty()) {
			user.comprarOfertable(atraccion);
			atraccion.reservarCupo();

			// no grabamos para no afectar la base de pruebas
			atraccionDAO.update(atraccion);
			usuarioDAO.update(user);
		}

		return errors;

	}
	

}