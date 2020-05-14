{{ autogenerate_warning }}
<!DOCTYPE html>
<html lang="en">
<head>
    {%- block head %}
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/{{ base_dir }}/src/css/style.css">
    <link rel="stylesheet" type="text/css" href="/{{ base_dir }}/your_content/colors_and_layout/your_stylesheet.css">
	<link href="https://fonts.googleapis.com/css2?family=Jost&display=swap" rel="stylesheet">
    <link rel="icon" href="/{{ base_dir }}/favicon.ico" type="image/x-icon" />
    <title>{{ page_title }} - {{ comic_title }}</title>
    {%- endblock %}
</head>
<body>
{% block body %}
<div id="container">
    <a href="https://mothorialcomic.github.io/mothorial/" id="banner">
			<img id="banner-img" src="/{{ base_dir }}/your_content/images/banner.png" >
	</a>
    <div id="links-bar">
    {%- for link in links %}
        <a class="link-bar-link" href="{{ link.url }}">{{ link.name }}</a>
    {%- endfor %}
    </div>

    {% block content %}{% endblock %}

    <div id="powered-by">
        Powered by <a id="powered-by-link" href="https://github.com/ryanvilbrandt/comic_git">comic_git</a>
    </div>
</div>
{% endblock %}
</body>
{% block script %}{% endblock %}
</html>
