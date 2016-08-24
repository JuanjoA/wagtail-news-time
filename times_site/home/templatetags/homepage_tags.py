from django import template
from home.models import ArticlePage

register = template.Library()

@register.inclusion_tag('home/tags/top_stories.html')
def top_stories():
    article_pages = ArticlePage.objects.live().order_by('-latest_revision_created_at')
    return {
        'latest_histories': article_pages
    }
