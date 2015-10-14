.class final Lc/m/x/a/gv/am;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/m/x/a/gv/ah",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/aj$b;

.field final synthetic b:Lc/m/x/a/gv/ah;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lc/m/x/a/gv/aj;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/aj;Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/am;->d:Lc/m/x/a/gv/aj;

    iput-object p2, p0, Lc/m/x/a/gv/am;->a:Lc/m/x/a/gv/aj$b;

    iput-object p3, p0, Lc/m/x/a/gv/am;->b:Lc/m/x/a/gv/ah;

    iput-object p4, p0, Lc/m/x/a/gv/am;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/am;->a:Lc/m/x/a/gv/aj$b;

    iget-object v1, p0, Lc/m/x/a/gv/am;->b:Lc/m/x/a/gv/ah;

    iget-object v2, p0, Lc/m/x/a/gv/am;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    return-object v0
.end method
