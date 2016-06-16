.class Lcom/urbanairship/analytics/ActivityMonitor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/ActivityMonitor;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->a:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->a:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->a()V

    return-void
.end method
