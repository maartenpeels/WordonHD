.class final Lc/m/x/a/gv/ad$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/m/x/a/gv/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/ad;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/ad;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0}, Lc/m/x/a/gv/ad;->c()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/ad;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/gv/ad$e;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0}, Lc/m/x/a/gv/ad;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lc/m/x/a/gv/ad$a;

    iget-object v1, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/m/x/a/gv/ad$a;-><init>(Lc/m/x/a/gv/ad;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/ad;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/ad;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0}, Lc/m/x/a/gv/ad;->a()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v3, v0, v4}, Lc/m/x/a/gv/ad;->a(II)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/ad;->a(I)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0}, Lc/m/x/a/gv/ad;->a()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v3, v0, v4}, Lc/m/x/a/gv/ad;->a(II)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/ad;->a(I)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    invoke-virtual {v0}, Lc/m/x/a/gv/ad;->a()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ad;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/ad$e;->a:Lc/m/x/a/gv/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lc/m/x/a/gv/ad;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
