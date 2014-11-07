# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.create({ name: "test" })

Tag.create({ name: "apple" })
Tag.create({ name: "orange" })

Image.create({ name: "pikaso" })
Image.create({ name: "mogera" })

role = Role.create({ name: "admin" })

Author.create({ name: "user_01", describe: "human", role_id: role.id })
Author.create({ name: "user_02", describe: "uma", role_id: role.id })

step = Step.new({ body: "step_01", order: 2 })
step.step_images_attributes = [{ image_id: 1 }]
step.save

step = Step.new({ body: "step_02", order: 1 })
step.step_images_attributes = [{ image_id: 2 }]
step.save

post = Post.new({
                    title: "hoge",
                    subtitle: "fuga",
                    body: "test body.",
                    category_id: category.id
                })

post.taggings_attributes = [{ tag_id: 1 }, { tag_id: 2 }]
post.post_images_attributes = [{ image_id: 1 }, { image_id: 2 }]
post.post_authors_attributes = [{ author_id: 1 }, { author_id: 2 }]
post.post_steps_attributes = [{ step_id: 1 }, { step_id: 2 }]
post.save
