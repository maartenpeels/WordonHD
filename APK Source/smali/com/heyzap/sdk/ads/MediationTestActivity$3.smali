.class Lcom/heyzap/sdk/ads/MediationTestActivity$3;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;->assembleUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

.field final synthetic val$elements:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$3;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$3;->val$elements:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$3;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$3;->val$elements:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->makeSecondaryUI(Ljava/lang/String;)V

    .line 97
    return-void
.end method
