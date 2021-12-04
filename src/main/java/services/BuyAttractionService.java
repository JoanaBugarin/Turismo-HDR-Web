package services;

import java.util.HashMap;
import java.util.Map;

import model.Attraction;
import model.Usuario;
import persistence.AttractionDAO;
import persistence.UserDAO;
import persistence.commons.DAOFactory;

public class BuyAttractionService {

	AttractionDAO attractionDAO = DAOFactory.getAtraccionDAO();
	UserDAO userDAO = DAOFactory.getUsuarioDAO();

	public Map<String, String> buy(Integer userId, Integer attractionId) {
		Map<String, String> errors = new HashMap<String, String>();

		Usuario user = userDAO.find(userId);
		Attraction attraction = attractionDAO.find(attractionId);

		if (!attraction.canHost(1)) {
			errors.put("attraction", "No hay cupo disponible");
		}
		if (!user.canAfford(attraction)) {
			errors.put("user", "No tienes dinero suficiente");
		}
		if (!user.canAttend(attraction)) {
			errors.put("user", "No tienes tiempo suficiente");
		}

		if (errors.isEmpty()) {
			user.addToItinerary(attraction);
			attraction.host(1);

			// no grabamos para no afectar la base de pruebas
			attractionDAO.update(attraction);
			userDAO.update(user);
		}

		return errors;

	}

}
