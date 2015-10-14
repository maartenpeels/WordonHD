.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "AdcolonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 190
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1100(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 191
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1100(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    move-object v7, v0

    .line 192
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v3, v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v2, v3}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_0
    new-instance v8, Lcom/heyzap/internal/RetryManager;

    new-instance v9, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;

    invoke-direct {v9, p0, v7}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1800(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v8, v9, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v8}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 219
    iget-object v1, v7, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;

    invoke-direct {v2, p0, v7}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v3, v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1900(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 228
    return-void

    .line 194
    :pswitch_0
    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    iput-object v1, v7, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    goto :goto_0

    .line 197
    :pswitch_1
    new-instance v1, Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    iput-object v1, v7, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
