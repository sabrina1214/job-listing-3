# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Hello World'
puts '这个种子档会自动建立一个账号,并且随机创建10个jobs,10个隐藏的jobs'

create_account = User.create([email: 'admin@gmail.com', password: '1111', password_confirmation: '111111', is_admin: 'true'])
puts 'Admin account is created successfully!'

job_info = [
  '招聘规划项目负责人',
  '招聘建筑部门负责人',
  '招聘助理建筑师',
  '招聘实习生',
  '招聘环评工程师',
  '招聘城市规划师',
  '招聘景观规划设计师',
  '招聘结构专业负责人',
  '招聘旅游项目负责人',
  '招聘助理规划师',
  '招聘销售经理',
  '招聘方案主创设计师',
  '招聘规划设计师'
]
create_jobs = for i in 1..10 do
                Job.create!([title: job_info[rand(job_info.length)], description: '这是一个公开的工作', wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false'])
              end
for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: "这是一个隐藏的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true'])
end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
