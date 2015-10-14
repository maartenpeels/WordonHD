.class public Lc/m/x/a/gv/y;
.super Lc/m/x/a/gv/ae;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc/m/x/a/gv/ae",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lc/m/x/a/gv/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/m/x/a/gv/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/m/x/a/gv/ae;-><init>()V

    return-void
.end method

.method private b()Lc/m/x/a/gv/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/m/x/a/gv/ad",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/y;->a:Lc/m/x/a/gv/ad;

    if-nez v0, :cond_0

    new-instance v0, Lc/m/x/a/gv/z;

    invoke-direct {v0, p0}, Lc/m/x/a/gv/z;-><init>(Lc/m/x/a/gv/y;)V

    iput-object v0, p0, Lc/m/x/a/gv/y;->a:Lc/m/x/a/gv/ad;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/y;->a:Lc/m/x/a/gv/ad;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lc/m/x/a/gv/y;->b()Lc/m/x/a/gv/ad;

    move-result-object v0

    iget-object v1, v0, Lc/m/x/a/gv/ad;->b:Lc/m/x/a/gv/ad$b;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/ad$b;

    invoke-direct {v1, v0}, Lc/m/x/a/gv/ad$b;-><init>(Lc/m/x/a/gv/ad;)V

    iput-object v1, v0, Lc/m/x/a/gv/ad;->b:Lc/m/x/a/gv/ad$b;

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/ad;->b:Lc/m/x/a/gv/ad$b;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lc/m/x/a/gv/y;->b()Lc/m/x/a/gv/ad;

    move-result-object v0

    iget-object v1, v0, Lc/m/x/a/gv/ad;->c:Lc/m/x/a/gv/ad$c;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/ad$c;

    invoke-direct {v1, v0}, Lc/m/x/a/gv/ad$c;-><init>(Lc/m/x/a/gv/ad;)V

    iput-object v1, v0, Lc/m/x/a/gv/ad;->c:Lc/m/x/a/gv/ad$c;

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/ad;->c:Lc/m/x/a/gv/ad$c;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lc/m/x/a/gv/y;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lc/m/x/a/gv/y;->a(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lc/m/x/a/gv/y;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lc/m/x/a/gv/y;->b()Lc/m/x/a/gv/ad;

    move-result-object v0

    iget-object v1, v0, Lc/m/x/a/gv/ad;->d:Lc/m/x/a/gv/ad$e;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/ad$e;

    invoke-direct {v1, v0}, Lc/m/x/a/gv/ad$e;-><init>(Lc/m/x/a/gv/ad;)V

    iput-object v1, v0, Lc/m/x/a/gv/ad;->d:Lc/m/x/a/gv/ad$e;

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/ad;->d:Lc/m/x/a/gv/ad$e;

    return-object v0
.end method
