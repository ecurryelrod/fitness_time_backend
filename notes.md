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
- date
- start/end time
- price
- teacher_id
- studio_id
- belongs_to :level
- belongs_to :studio
- belongs_to :teacher

ClassLevel
- title
- has_many :classes

Teacher
- name
- bio
- *** image url for photo of themselves ***
- studio_id
- has_many :classes
- has_many :studios, through: :classes