# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [X] Include at least one has_many relationship (User has_many Clippings, Plant has_many Clippings)
- [X] Include at least one belongs_to relationship (Clippings belong_to User, Clippings belong_to Plants)
- [X] Include at least one has_many through relationship (User has_many Plants through Clippings, Plant has_many Users through Clippings)
- [X] The "through" part of the has_many through includes at least one user submittable attribute (Clipping.rating)
- [X] Include reasonable validations for simple model objects (Users, Plants, Clippings)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. Plant.trees URL: /plants/trees)
- [X] Include signup (Using Bcrypt and secure password validation)
- [X] Include login (Using Bcrypt and secure password validation)
- [X] Include logout (Using Bcrypt and secure password validation)
- [X] Include third party signup/login (OmniAuth with Google)
- [X] Include nested resource show or index (URL e.g. users/2/clippings)
- [X] Include nested resource "new" form (new clippings can be added at users/:id/clippings, and can also be updated from the same page)
- [X] Include form display of validation errors

Confirm:
- [X] The application is pretty DRY
- [X] Limited logic in controllers
- [X] Views use helper methods if appropriate
- [X] Views use partials if appropriate
