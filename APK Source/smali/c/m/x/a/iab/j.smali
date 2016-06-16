.class final Lc/m/x/a/iab/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lc/m/x/a/iab/h;


# direct methods
.method constructor <init>(Lc/m/x/a/iab/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/iab/j;->b:Lc/m/x/a/iab/h;

    iput-object p2, p0, Lc/m/x/a/iab/j;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/iab/j;->b:Lc/m/x/a/iab/h;

    iget-object v0, v0, Lc/m/x/a/iab/h;->d:Lc/m/x/a/iab/l;

    iget-object v0, p0, Lc/m/x/a/iab/j;->b:Lc/m/x/a/iab/h;

    iget-object v0, v0, Lc/m/x/a/iab/h;->a:Ljava/util/List;

    iget-object v0, p0, Lc/m/x/a/iab/j;->a:Ljava/util/List;

    return-void
.end method
