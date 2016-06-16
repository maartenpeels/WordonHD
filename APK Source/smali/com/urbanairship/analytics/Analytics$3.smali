.class Lcom/urbanairship/analytics/Analytics$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/Event;

.field final synthetic b:Lcom/urbanairship/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$3;->b:Lcom/urbanairship/analytics/Analytics;

    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics$3;->a:Lcom/urbanairship/analytics/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics$3;->a:Lcom/urbanairship/analytics/Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$3;->a:Lcom/urbanairship/analytics/Event;

    invoke-static {v0}, Lcom/urbanairship/analytics/EventService;->a(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method
