.class Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "MediationConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/config/MediationConfigLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/config/MediationConfigLoader$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->retry()V

    .line 107
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Lcom/heyzap/mediation/config/MediationConfig;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v1, v1, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;
    invoke-static {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$000(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$100(Lcom/heyzap/mediation/config/MediationConfigLoader;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;
    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$200(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v4

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;
    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$300(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v5

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;
    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$400(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/display/WaterfallMediator;

    move-result-object v6

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$500(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;
    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$600(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v8

    move-object v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/config/MediationConfig;-><init>(Lcom/heyzap/internal/ContextReference;Lorg/json/JSONObject;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/mediation/filters/FilterManager;)V

    .line 98
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v1, v1, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/internal/SettableFuture;
    invoke-static {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$700(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->retry()V

    goto :goto_0
.end method
