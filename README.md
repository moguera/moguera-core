# REST API

## Posts

### POST /v1/posts
Create a new post.

### GET /v1/posts
List all posts.

### GET /v1/posts/{postid}
List the post.

### GET /v1/posts/{postid}/category
List the post category.

### GET /v1/posts/{postid}/authors
List all post authors.

### GET /v1/posts/{postid}/tags
List all post tags.

### GET /v1/posts/{postid}/images
List all post images.

### GET /v1/posts/{postid}/steps
List all post steps.

### PUT /v1/posts/{postid}
Change record of the post.

### DELETE /v1/posts/{postid}
Destroy post.

## Categories

### POST /v1/categories
Create a new category.

### GET /v1/categories
List all categories.

### GET /v1/categories/{categoryid}
List the category.

### GET /v1/categories/{categoryid}/posts
List all posts of the category.

### PUT /v1/categories/{categoryid}
Change record of the category.

### DELETEE /v1/categories/{categoryid}
Destory category.

## Authors

### POST /v1/authors
Create a new author.

### GET /v1/authors
List all authors.

### GET /v1/authors/{authorid}
List the author.

### GET /v1/authors/{authorid}/posts
List all posts of the author.

### PUT /v1/authors/{authorid}
Change record of the author.

### DELETE /v1/authors/{authorid}
Destory author.

## Roles

### POST /v1/roles
Create a new role.

### GET /v1/roles
List all roles.

### GET /v1/roles/{roleid}
List the role.

### GET /v1/roles/{roleid}/authors
List all authors of the role.

### PUT /v1/roles/{roleid}
Change record of the role.

### DELETE /v1/roles/{roleid}
Destory role.

## Tags

### POST /v1/tags
Create a new tag.

### GET /v1/tags
List all tags.

### GET /v1/tags/{tagid}
List the tag.

### GET /v1/tags/{tagid}/posts
List all posts of the tag.

### PUT /v1/tags/{tagid}
Change record of the tag.

### DELETE /v1/tags/{tagid}
Destory tag.

## Images

### POST /v1/images
Create a new image.

### GET /v1/images
List all images.

### GET /v1/images/{imageid}
List the image.

### GET /v1/images/{imageid}/posts
List all posts of the image.

### GET /v1/images/{imageid}/steps
List all steps of the image.

### PUT /v1/images/{imageid}
Change record of the image.

### DELETE /v1/images/{imageid}
Destory image.

## Steps

### POST /v1/steps
Create a new step.

### GET /v1/steps
List all steps.

### GET /v1/steps/{stepid}
List the step.

### GET /v1/steps/{stepid}/post
List the parent post.

### GET /v1/steps/{stepid}/images
List all images of the step.

### PUT /v1/steps/{stepid}
Change record of the step.

### DELETE /v1/steps/{stepid}
Destory step.
