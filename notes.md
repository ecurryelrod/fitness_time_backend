Studio
- name
- email
- phone
- address1, address2, city, state, zip
- has_many :classes
- has_many :teachers ... , through: :classes

Class
- title
- description
- date/time
- level
- price
- teacher_id
- studio_id
- belongs_to :studio
- belongs_to :teacher

Teacher
- name
- bio
- studio_id
- has_many classes
- belongs_to :studio
- ** (start with belongs_to relationship? and maybe make has_many later???)
- ** has_many :studios, through: :classes