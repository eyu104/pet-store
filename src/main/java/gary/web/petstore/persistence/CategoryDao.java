package gary.web.petstore.persistence;

import gary.web.petstore.domain.Category;

import java.util.List;

public interface CategoryDao {

    List<Category> getCategoryList();

    Category getCategory(String categoryId);
}
