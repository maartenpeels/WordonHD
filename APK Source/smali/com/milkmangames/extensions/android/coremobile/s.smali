.class final Lcom/milkmangames/extensions/android/coremobile/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/s;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/coremobile/s;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Input gained focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/s;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
