from django.utils.translation import ugettext_lazy as _
import horizon


class MyDashboard(horizon.PanelGroup):
    slug = "my_panel_group"
    name = _("My Panel Group")
    panels = ('my_panel',)


class MyPanel(horizon.Panel):
    name = _("My Panel")
    slug = "my_panel"


horizon.register(MyPanel)
