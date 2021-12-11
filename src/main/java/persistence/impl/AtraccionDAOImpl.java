package persistence.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import persistence.commons.ConnectionProvider;

import persistence.commons.MissingDataException;
import persistence.AtraccionDAO;
import model.Atraccion;
import model.TipoAtraccion;

public class AtraccionDAOImpl implements AtraccionDAO {

	/*
	 * Busca y devuelve todas las atracciones de la base de datos
	 */
	@Override
	public List<Atraccion> findAll() {
		//public List<Atraccion> findAll() throws SQLException {
		try {
			String sql = "SELECT Atraccion.ID_Atraccion, Atraccion.Nombre, Atraccion.Cupo_Disponible,"
					+ " Atraccion.Costo, Atraccion.Tiempo," + " TipoAtraccion.id_tipoAtraccion"
					+ " FROM Atraccion INNER JOIN TipoAtraccion "
					+ " ON Atraccion.TipoDeAtraccion = TipoAtraccion.id_tipoAtraccion";

			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultados = statement.executeQuery();

			ArrayList<Atraccion> atracciones = new ArrayList<Atraccion>();
			while (resultados.next()) {
				atracciones.add(toAtraccion(resultados));
			}

			return atracciones;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	/*
	 * Instancia un objeto atracciï¿½n a partir de la base de datos
	 */
	public Atraccion toAtraccion(ResultSet resultados) throws Exception {

		String nombre = resultados.getString(2);
		double costo = resultados.getDouble(3);
		double tiempo = resultados.getInt(4);
		int cupoDisponible = resultados.getInt(5);
		//String tipo = resultados.getString(6).toUpperCase();
		TipoAtraccion tipo = TipoAtraccion.valueOf(resultados.getString(6).toUpperCase());

		return new Atraccion(nombre, costo, tiempo, cupoDisponible, tipo);

	}

	/*
	 * Cuenta todas las atracciones en la base de datos
	 */
	@Override
	public int countAll() throws SQLException {
		String sql = "SELECT COUNT(1) AS TOTAL FROM Atraccion";
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement statement = conn.prepareStatement(sql);
		ResultSet resultados = statement.executeQuery();

		resultados.next();
		int total = resultados.getInt("TOTAL");

		return total;
	}

	/*
	 * Inserta una atracciï¿½n nueva en la base de datos
	 */
	public int insertarAtrac(String nombre, Double costo, Double tiempo, Integer capacity, TipoAtraccion tipoAtraccion)
	//public int insertarAtrac(String nombre, Double costo, Double tiempo, Integer capacity, String tipoAtraccion)
			throws SQLException {

		String sql = "INSERT INTO ATRACCION (NOMBRE, COSTO, TIEMPO, CUPO_DISPONIBLE, TIPODEATRACCION) VALUES (?,?,?,?,?)";

		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement statement = conn.prepareStatement(sql);

		statement.setString(1, nombre);
		statement.setDouble(2, costo);
		statement.setDouble(3, tiempo);
		statement.setInt(4, capacity);
		statement.setString(5, tipoAtraccion.name());

		int rows = statement.executeUpdate();

		return rows;
	}

	/*
	 * Actualiza una atracciï¿½n en la base de datos
	 */
	@Override
	public int update(Atraccion atraccion, int cupo) {
		//public int update(Atraccion atraccion) throws SQLException {
		try {
			String sql = "UPDATE Atraccion SET Cupo_Disponible = ? WHERE Nombre = ?";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, cupo);
			statement.setString(2, atraccion.getNombre());

			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	/*
	 * Borra una atracciï¿½n en la base de datos
	 */
	@Override
	public int delete(Atraccion atraccion) throws SQLException {
		//public int delete(Atraccion atraccion) throws SQLException {
		String sql = "DELETE FROM Atraccion WHERE Nombre = ?";
		Connection conn = ConnectionProvider.getConnection();

		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, atraccion.getNombre());
		int rows = statement.executeUpdate();

		return rows;
	}

	/*
	 * Busca una atracciï¿½n por su ID en la base de datos
	 */
	@Override
	public Atraccion buscarPorId(Long IdAtraccion) {
		try {
			String sql = "SELECT Atraccion.ID_Atraccion, Atraccion.Nombre,Atraccion.Costo ,"
					+ " Atraccion.Tiempo, Atraccion.Cupo_Disponible," + "  Atraccion.TipoDeAtraccion"
					+ " FROM Atraccion" + " WHERE Atraccion.Id_Atraccion = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setLong(1, IdAtraccion);
			ResultSet resultados = statement.executeQuery();

			Atraccion atraccion = null;

			if (resultados.next()) {
				atraccion = toAtraccion(resultados);
			}

			return atraccion;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	@Override
	public int find(String nombre) throws SQLException {
		

		String sql = "SELECT ID_Atraccion, Nombre FROM Atraccion WHERE Nombre LIKE \"%" + nombre + "%\"";

		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement statement = conn.prepareStatement(sql);
		ResultSet resultados = statement.executeQuery();

		
		return Integer.parseInt(resultados.getString(1));

	}

	@Override
	public Atraccion find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Atraccion t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertarAtrac(String nombre, int costo, int tiempo, int cupoDisponible, String tipoAtraccion)
			throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
