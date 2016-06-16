.class final Lc/m/x/a/gv/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/ah;

.field final synthetic b:Lc/m/x/a/gv/aj;

.field final synthetic c:Lc/m/x/a/gv/aj$b;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Lc/m/x/a/gv/aj$b;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/ak;->a:Lc/m/x/a/gv/ah;

    iput-object p2, p0, Lc/m/x/a/gv/ak;->b:Lc/m/x/a/gv/aj;

    iput-object p3, p0, Lc/m/x/a/gv/ak;->c:Lc/m/x/a/gv/aj$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/ak;->a:Lc/m/x/a/gv/ah;

    iget-object v1, p0, Lc/m/x/a/gv/ak;->b:Lc/m/x/a/gv/aj;

    invoke-interface {v0, v1}, Lc/m/x/a/gv/ah;->then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/aj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/ak;->c:Lc/m/x/a/gv/aj$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lc/m/x/a/gv/al;

    invoke-direct {v1, p0}, Lc/m/x/a/gv/al;-><init>(Lc/m/x/a/gv/ak;)V

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/ah;)Lc/m/x/a/gv/aj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc/m/x/a/gv/ak;->c:Lc/m/x/a/gv/aj$b;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
