.class public Lcom/heyzap/mediation/filters/FilterManager;
.super Ljava/lang/Object;
.source "FilterManager.java"


# instance fields
.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/filters/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/filters/FilterManager;->filters:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/heyzap/mediation/filters/FilterManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 25
    iput-object p2, p0, Lcom/heyzap/mediation/filters/FilterManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 26
    return-void
.end method


# virtual methods
.method public accept(Lcom/heyzap/mediation/filters/FilterContext;)Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/heyzap/mediation/filters/FilterManager;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/filters/Filter;

    .line 81
    iget-object v1, p0, Lcom/heyzap/mediation/filters/Filter;->matcher:Lcom/heyzap/mediation/filters/Matcher;

    invoke-interface {v1, p1}, Lcom/heyzap/mediation/filters/Matcher;->match(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/heyzap/mediation/filters/Filter;->policy:Lcom/heyzap/mediation/filters/FilterPolicy;

    invoke-interface {v1}, Lcom/heyzap/mediation/filters/FilterPolicy;->accept()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addDisabledTagsFilter(Lorg/json/JSONArray;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    if-eqz p1, :cond_1

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, v5

    .line 61
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to get disabled tag at index"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_0
    new-instance v1, Lcom/heyzap/mediation/filters/Filter;

    new-instance v2, Lcom/heyzap/mediation/filters/TagMatcher;

    invoke-direct {v2, v0}, Lcom/heyzap/mediation/filters/TagMatcher;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/heyzap/mediation/filters/RejectFilterPolicy;

    invoke-direct {v0}, Lcom/heyzap/mediation/filters/RejectFilterPolicy;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/heyzap/mediation/filters/Filter;-><init>(Lcom/heyzap/mediation/filters/Matcher;Lcom/heyzap/mediation/filters/FilterPolicy;)V

    invoke-virtual {p0, v1}, Lcom/heyzap/mediation/filters/FilterManager;->addFilter(Lcom/heyzap/mediation/filters/Filter;)V

    .line 73
    :cond_1
    return-void
.end method

.method public addDisplay(Lcom/heyzap/mediation/filters/FilterContext;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/heyzap/mediation/filters/FilterManager;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/filters/Filter;

    .line 92
    iget-object v1, p0, Lcom/heyzap/mediation/filters/Filter;->matcher:Lcom/heyzap/mediation/filters/Matcher;

    invoke-interface {v1, p1}, Lcom/heyzap/mediation/filters/Matcher;->match(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/heyzap/mediation/filters/Filter;->policy:Lcom/heyzap/mediation/filters/FilterPolicy;

    invoke-interface {v1, p2}, Lcom/heyzap/mediation/filters/FilterPolicy;->addDisplay(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public addFilter(Lcom/heyzap/mediation/filters/Filter;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/heyzap/mediation/filters/FilterManager;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public addIncentiveDailyLimitFilter(I)V
    .locals 10

    .prologue
    .line 33
    if-ltz p1, :cond_0

    .line 34
    new-instance v6, Lcom/heyzap/mediation/filters/Filter;

    new-instance v7, Lcom/heyzap/mediation/filters/AdUnitMatcher;

    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {v7, v0}, Lcom/heyzap/mediation/filters/AdUnitMatcher;-><init>(Lcom/heyzap/internal/Constants$AdUnit;)V

    new-instance v0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;

    iget-object v1, p0, Lcom/heyzap/mediation/filters/FilterManager;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Lcom/heyzap/mediation/filters/SharedPreferenceStore;

    iget-object v2, p0, Lcom/heyzap/mediation/filters/FilterManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    const-string v8, "heyzap.filter"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v8, "incentive_history"

    const-string v9, ""

    invoke-direct {v5, v2, v8, v9}, Lcom/heyzap/mediation/filters/SharedPreferenceStore;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;-><init>(Ljava/util/concurrent/ExecutorService;IILjava/util/concurrent/TimeUnit;Lcom/heyzap/mediation/filters/Store;)V

    invoke-direct {v6, v7, v0}, Lcom/heyzap/mediation/filters/Filter;-><init>(Lcom/heyzap/mediation/filters/Matcher;Lcom/heyzap/mediation/filters/FilterPolicy;)V

    invoke-virtual {p0, v6}, Lcom/heyzap/mediation/filters/FilterManager;->addFilter(Lcom/heyzap/mediation/filters/Filter;)V

    .line 43
    :cond_0
    return-void
.end method

.method public addRateLimitIntervalFilter(I)V
    .locals 10

    .prologue
    .line 46
    if-ltz p1, :cond_0

    .line 47
    new-instance v6, Lcom/heyzap/mediation/filters/Filter;

    new-instance v7, Lcom/heyzap/mediation/filters/AnyMatcher;

    invoke-direct {v7}, Lcom/heyzap/mediation/filters/AnyMatcher;-><init>()V

    new-instance v0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

    iget-object v1, p0, Lcom/heyzap/mediation/filters/FilterManager;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Lcom/heyzap/mediation/filters/SharedPreferenceStore;

    iget-object v3, p0, Lcom/heyzap/mediation/filters/FilterManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v3}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v3

    const-string v8, "heyzap.filter"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v8, "ad_display_history"

    const-string v9, ""

    invoke-direct {v5, v3, v8, v9}, Lcom/heyzap/mediation/filters/SharedPreferenceStore;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;-><init>(Ljava/util/concurrent/ExecutorService;IILjava/util/concurrent/TimeUnit;Lcom/heyzap/mediation/filters/Store;)V

    invoke-direct {v6, v7, v0}, Lcom/heyzap/mediation/filters/Filter;-><init>(Lcom/heyzap/mediation/filters/Matcher;Lcom/heyzap/mediation/filters/FilterPolicy;)V

    invoke-virtual {p0, v6}, Lcom/heyzap/mediation/filters/FilterManager;->addFilter(Lcom/heyzap/mediation/filters/Filter;)V

    .line 56
    :cond_0
    return-void
.end method

.method public configure(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
