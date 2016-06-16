.class Lcom/heyzap/mediation/MediationManager$2;
.super Ljava/lang/Object;
.source "MediationManager.java"

# interfaces
.implements Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/MediationManager;->display(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/MediationManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field final synthetic val$request:Lcom/heyzap/mediation/request/MediationRequest;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/MediationManager;Lcom/heyzap/mediation/request/MediationRequest;Ljava/lang/String;Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    iput-object p2, p0, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p3, p0, Lcom/heyzap/mediation/MediationManager$2;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/heyzap/mediation/MediationManager$2;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/heyzap/mediation/MediationManager$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/heyzap/mediation/filters/FilterContext;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/filters/FilterContext;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/filters/FilterManager;->accept(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->sendDisplayFailed(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/heyzap/mediation/config/MediationConfig;->getDisplayStrategy()Lcom/heyzap/mediation/display/WaterfallMediator;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/display/WaterfallMediator;->getDisplayAdapter(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/internal/ListenableFuture;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/heyzap/mediation/MediationManager$2$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/heyzap/mediation/MediationManager$2$1;-><init>(Lcom/heyzap/mediation/MediationManager$2;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/mediation/config/MediationConfig;Lcom/heyzap/mediation/filters/FilterContext;)V

    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$400(Lcom/heyzap/mediation/MediationManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/heyzap/internal/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method
