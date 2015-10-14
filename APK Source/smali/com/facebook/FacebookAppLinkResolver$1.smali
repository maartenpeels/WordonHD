.class Lcom/facebook/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/m/x/a/gv/ah",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Lc/m/x/a/gv/ag;",
        ">;",
        "Lc/m/x/a/gv/ag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lc/m/x/a/gv/aj;)Lc/m/x/a/gv/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/m/x/a/gv/aj",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lc/m/x/a/gv/ag;",
            ">;>;)",
            "Lc/m/x/a/gv/ag;"
        }
    .end annotation

    invoke-virtual {p1}, Lc/m/x/a/gv/aj;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/m/x/a/gv/ag;

    return-object p0
.end method

.method public bridge synthetic then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookAppLinkResolver$1;->then(Lc/m/x/a/gv/aj;)Lc/m/x/a/gv/ag;

    move-result-object v0

    return-object v0
.end method
