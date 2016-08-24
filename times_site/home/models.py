from __future__ import absolute_import, unicode_literals

from django.db import models

from wagtail.wagtailcore.models import Page
from wagtail.wagtailadmin.edit_handlers import FieldPanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel

from wagtail.wagtailcore.fields import RichTextField


class ArticlePage(Page):

    featured_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    body = RichTextField(blank=True)

    excerpt = models.TextField(blank=True)

    thumbnail_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = [
        FieldPanel('title'),
        FieldPanel('body', classname='full'),
        FieldPanel('excerpt'),
        ImageChooserPanel('featured_image'),
        ImageChooserPanel('thumbnail_image'),
    ]

class ArticlePageIndex(Page):
    content_panels = [
        FieldPanel('title')
    ]
class HomePage(Page):
    pass
