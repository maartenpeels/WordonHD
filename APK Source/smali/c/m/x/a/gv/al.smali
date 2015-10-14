.class final Lc/m/x/a/gv/al;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/m/x/a/gv/ah",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/ak;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/ak;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/al;->a:Lc/m/x/a/gv/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/al;->a:Lc/m/x/a/gv/ak;

    iget-object v0, v0, Lc/m/x/a/gv/ak;->c:Lc/m/x/a/gv/aj$b;

    invoke-virtual {v0}, Lc/m/x/a/gv/aj$b;->b()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/al;->a:Lc/m/x/a/gv/ak;

    iget-object v0, v0, Lc/m/x/a/gv/ak;->c:Lc/m/x/a/gv/aj$b;

    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->e()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/al;->a:Lc/m/x/a/gv/ak;

    iget-object v0, v0, Lc/m/x/a/gv/ak;->c:Lc/m/x/a/gv/aj$b;

    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
