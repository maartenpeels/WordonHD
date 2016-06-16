.class final Lc/m/x/a/gv/ap;
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

    iput-object p1, p0, Lc/m/x/a/gv/ap;->a:Lc/m/x/a/gv/ah;

    iput-object p2, p0, Lc/m/x/a/gv/ap;->b:Lc/m/x/a/gv/aj;

    iput-object p3, p0, Lc/m/x/a/gv/ap;->c:Lc/m/x/a/gv/aj$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/ap;->a:Lc/m/x/a/gv/ah;

    iget-object v1, p0, Lc/m/x/a/gv/ap;->b:Lc/m/x/a/gv/aj;

    invoke-interface {v0, v1}, Lc/m/x/a/gv/ah;->then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/ap;->c:Lc/m/x/a/gv/aj$b;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc/m/x/a/gv/ap;->c:Lc/m/x/a/gv/aj$b;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
