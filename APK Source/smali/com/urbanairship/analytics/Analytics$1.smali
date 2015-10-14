.class Lcom/urbanairship/analytics/Analytics$1;
.super Lcom/urbanairship/analytics/ActivityMonitor$Listener;


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {p0}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Analytics;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Analytics;Z)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->b(Lcom/urbanairship/analytics/Analytics;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppForegroundEvent;

    invoke-direct {v1}, Lcom/urbanairship/analytics/AppForegroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Analytics;Z)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppBackgroundEvent;

    invoke-direct {v1}, Lcom/urbanairship/analytics/AppBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->c(Lcom/urbanairship/analytics/Analytics;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->d(Lcom/urbanairship/analytics/Analytics;)Ljava/lang/String;

    return-void
.end method
