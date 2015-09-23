from django.conf.urls import patterns, url

from subdomains.tests.views import view


urlpatterns = patterns(
    '',  # prefix
    url(regex=r'^$', view=view, name='home'),
    url(regex=r'^example/$', view=view, name='example'),
)
