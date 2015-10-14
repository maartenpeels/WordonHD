.class public Lcom/heyzap/mediation/adapter/AdUnitAliasMap;
.super Ljava/lang/Object;
.source "AdUnitAliasMap.java"


# instance fields
.field private final aliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->aliasMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->aliasMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public getAliases(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 36
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->aliasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_1
    return-object v1
.end method

.method public translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->aliasMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 20
    if-nez p0, :cond_0

    move-object v0, p1

    .line 23
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public translate(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 29
    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    return-object v1
.end method
