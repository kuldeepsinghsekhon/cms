package cms;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;



public class PostService {

	public boolean addCategory(Category category){
		try{
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager entityManager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		entityManager.persist(category);
		entityManager.getTransaction().commit();
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean addPost(int category_id,Post post){
		try{
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager entityManager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		Category category =entityManager.find(Category.class,category_id);
		post.setCategory(category);
		entityManager.persist(category);
		entityManager.getTransaction().commit();
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public List<Category>allCategory(){
		EntityManager manager=Persistence.createEntityManagerFactory("cms").createEntityManager();
		EntityTransaction transaction= manager.getTransaction();
		transaction.begin();
		List categories=manager.createNamedQuery("Category.findAll").getResultList();
		transaction.commit();
		return categories;
		
	}
	public void delete(int id) {
		EntityManager manager=Persistence.createEntityManagerFactory("cms").createEntityManager();
		EntityTransaction transaction= manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("delete  from Category c where c.id=:id" );
		query.setParameter("id", id);
		query.executeUpdate();
		transaction.commit();
	}
	public List<Post> allPosts() {
		EntityManager manager=Persistence.createEntityManagerFactory("cms").createEntityManager();
		EntityTransaction transaction= manager.getTransaction();
		transaction.begin();
		List posts=manager.createNamedQuery("Post.findAll").getResultList();
		transaction.commit();		
		return posts;
	}
	public void deletePost(int id) {
		EntityManager manager=Persistence.createEntityManagerFactory("cms").createEntityManager();
		EntityTransaction transaction= manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("delete  from Post p where p.id=:id" );
		query.setParameter("id", id);
		query.executeUpdate();
		transaction.commit();		
	}
	public boolean addPost(Post post ,int category_id, int user_id) {
		try{
			EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
			EntityManager manager= entityManagerFactory.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			Query query=manager.createQuery("select c from Category c where c.id=:id" );
			query.setParameter("id", category_id);
			Category category=(Category)query.getSingleResult();
			post.setCategory(category);
			
			Query query1=manager.createQuery("from User u where u.id=:id1" );
			query1.setParameter("id1", user_id);
			User user=(User)query1.getSingleResult();
			post.setUser(user);
			post.setPostDate(new Date());
			manager.persist(post);
			manager.getTransaction().commit();
			}
			catch (Exception e) {
				e.printStackTrace();
				return false;
			}
			return true;		
	}
	public List<Post> allPostByCategory(Category category){
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager manager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("from Post p where p.category=:category" );
		query.setParameter("category", category);
		List<Post> posts=query.getResultList();
		transaction.commit();
		return posts;
	}
	public List<Post> allPostOrderd(){
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager manager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("from Post p order by p.postViewed" );
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<Post> posts=query.getResultList();
		transaction.commit();
		return posts;
	}
	public List<Post> allLatestPost(){
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager manager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("from Post p order by p.postDate" );
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<Post> posts=query.getResultList();
		transaction.commit();
		return posts;
	}
	public List<Category>allCategoriesWithPost(){
		List<Category> categories= allCategory();
		for(Category category:categories){
			category.setPosts(allPostByCategory(category));
		}
		return categories;
	}
	/*public User findUser(){
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager manager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query query1=manager.createQuery("from User u where u.id=:id1" );
		query1.setParameter("id1", user_id);
		User user=(User)query1.getSingleResult();
		manager.getTransaction().commit();
	}*/
	public Post findPostById(int id) {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager manager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("from  Post p where p.id=:id");
		query.setParameter("id", id);
		Post post=(Post)query.getSingleResult();
		transaction.commit();
		return post;
	}
	public Category findOneByCategoryID(int id) {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
		EntityManager manager= entityManagerFactory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("from  Category c where c.id=:id");
		query.setParameter("id", id);
		
		Category category=(Category)query.getSingleResult();
		category.setPosts(allPostByCategory(category));
		transaction.commit();
		return category;
	}
	public void addMenu(Menu menu) {
		
			EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("cms");
			EntityManager entityManager= entityManagerFactory.createEntityManager();
			EntityTransaction transaction=entityManager.getTransaction();
			transaction.begin();
			entityManager.persist(menu);
			transaction.commit();
			
		
	}
	public List<Menu> allMenu() {
		EntityManager manager=Persistence.createEntityManagerFactory("cms").createEntityManager();
		EntityTransaction transaction= manager.getTransaction();
		transaction.begin();
		List menus=manager.createNamedQuery("Menu.findAll").getResultList();
		transaction.commit();		
		return menus;
		
	}
	public void deleteMenu(int id) {
		EntityManager manager=Persistence.createEntityManagerFactory("cms").createEntityManager();
		EntityTransaction transaction= manager.getTransaction();
		transaction.begin();
		Query query=manager.createQuery("delete  from Menu m where m.id=:id" );
		query.setParameter("id", id);
		query.executeUpdate();
		transaction.commit();	
		
	}
}
