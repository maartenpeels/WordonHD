.class final Lc/m/x/a/gv/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/m/x/a/gv/ah",
        "<TTResult;",
        "Lc/m/x/a/gv/aj",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/ah;

.field final synthetic b:Lc/m/x/a/gv/aj;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/aj;Lc/m/x/a/gv/ah;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/ao;->b:Lc/m/x/a/gv/aj;

    iput-object p2, p0, Lc/m/x/a/gv/ao;->a:Lc/m/x/a/gv/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->e()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lc/m/x/a/gv/aj;->a(Ljava/lang/Exception;)Lc/m/x/a/gv/aj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc/m/x/a/gv/aj;->f()Lc/m/x/a/gv/aj;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/ao;->a:Lc/m/x/a/gv/ah;

    invoke-virtual {p1, v0}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/ah;)Lc/m/x/a/gv/aj;

    move-result-object v0

    goto :goto_0
.end method
