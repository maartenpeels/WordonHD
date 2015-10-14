.class public Lcom/heyzap/mediation/adapter/AdUnitStateManager;
.super Ljava/lang/Object;
.source "AdUnitStateManager.java"


# instance fields
.field private aliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

.field private startedUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->aliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    .line 15
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->startedUnits:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public allStarted(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 23
    iget-object v2, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->aliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v2, v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->isStarted(Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStarted(Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->startedUnits:Ljava/util/Set;

    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->aliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAliasMap(Lcom/heyzap/mediation/adapter/AdUnitAliasMap;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->aliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    .line 45
    return-void
.end method

.method public start(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
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
    .line 31
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 34
    iget-object v3, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->aliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v3, v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 35
    iget-object v3, p0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->startedUnits:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    return-object v1
.end method
