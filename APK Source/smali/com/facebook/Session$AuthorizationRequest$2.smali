.class Lcom/facebook/Session$AuthorizationRequest$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StartActivityDelegate;


# instance fields
.field final synthetic this$0:Lcom/facebook/Session$AuthorizationRequest;

.field final synthetic val$fragment:Lc/m/x/a/gv/d;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;Lc/m/x/a/gv/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$2;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    iput-object p2, p0, Lcom/facebook/Session$AuthorizationRequest$2;->val$fragment:Lc/m/x/a/gv/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$2;->val$fragment:Lc/m/x/a/gv/d;

    invoke-virtual {v0}, Lc/m/x/a/gv/d;->getActivity()Lc/m/x/a/gv/g;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$2;->val$fragment:Lc/m/x/a/gv/d;

    invoke-virtual {v0, p1, p2}, Lc/m/x/a/gv/d;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
