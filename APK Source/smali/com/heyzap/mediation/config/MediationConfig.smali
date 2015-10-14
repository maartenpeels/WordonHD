.class public Lcom/heyzap/mediation/config/MediationConfig;
.super Ljava/lang/Object;
.source "MediationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/config/MediationConfig$AdapterNotFoundException;
    }
.end annotation


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private final loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lorg/json/JSONObject;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/mediation/filters/FilterManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfig;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 37
    iput-object p3, p0, Lcom/heyzap/mediation/config/MediationConfig;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    iput-object p4, p0, Lcom/heyzap/mediation/config/MediationConfig;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 39
    iput-object p5, p0, Lcom/heyzap/mediation/config/MediationConfig;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 40
    iput-object p6, p0, Lcom/heyzap/mediation/config/MediationConfig;->displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;

    .line 41
    iput-object p7, p0, Lcom/heyzap/mediation/config/MediationConfig;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    .line 42
    iput-object p8, p0, Lcom/heyzap/mediation/config/MediationConfig;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 44
    const-string v0, "filters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->configure(Lorg/json/JSONArray;)V

    .line 46
    const-string v0, "incentivized_daily_limit"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->addIncentiveDailyLimitFilter(I)V

    .line 47
    const-string v0, "ad_rate_limit_interval"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->addRateLimitIntervalFilter(I)V

    .line 48
    const-string v0, "disabled_tags"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->addDisabledTagsFilter(Lorg/json/JSONArray;)V

    .line 50
    const-string v0, "networks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->parseConfig(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-virtual {p5, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->configure(Ljava/util/List;)V

    .line 53
    new-instance v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;

    const-string v1, "loader"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p7, v0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->configure(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;)V

    .line 54
    invoke-virtual {p7}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->start()V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdapterPool()Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method public getDisplayStrategy()Lcom/heyzap/mediation/display/WaterfallMediator;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;

    return-object v0
.end method

.method public getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    return-object v0
.end method

.method public getLoaderStrategy()Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    return-object v0
.end method
