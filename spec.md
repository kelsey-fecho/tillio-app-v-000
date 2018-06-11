# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [X] Include at least one has_many relationship (User has_many Clippings, Plant has_many Clippings)
- [X] Include at least one belongs_to relationship (Clippings belong_to User, Clippings belong_to Plants)
- [X] Include at least one has_many through relationship (User has_many Plants through Clippings, Plant has_many Users through Clippings)
- [X] The "through" part of the has_many through includes at least one user submittable attribute (Clipping.rating)
- [X] Include reasonable validations for simple model objects (Users, Plants, Clippings)
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [X] Include signup (Using Bcrypt and secure password validation)
- [X] Include login (Using Bcrypt and secure password validation)
- [X] Include logout (Using Bcrypt and secure password validation)
- [X] Include third party signup/login (OmniAuth with Google)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [X] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
