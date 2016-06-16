.class final Lc/m/x/a/gv/z;
.super Lc/m/x/a/gv/ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/m/x/a/gv/ad",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/y;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/y;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-direct {p0}, Lc/m/x/a/gv/ad;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    iget v0, v0, Lc/m/x/a/gv/y;->h:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lc/m/x/a/gv/y;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    iget-object v0, v0, Lc/m/x/a/gv/y;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lc/m/x/a/gv/ae;->g:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v0, v0, Lc/m/x/a/gv/ae;->g:[Ljava/lang/Object;

    aput-object p2, v0, v1

    return-object v2
.end method

.method protected final a(I)V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/y;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-virtual {v0, p1, p2}, Lc/m/x/a/gv/y;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/y;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/z;->a:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->clear()V

    return-void
.end method
