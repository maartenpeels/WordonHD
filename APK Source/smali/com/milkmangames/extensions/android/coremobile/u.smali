.class final Lcom/milkmangames/extensions/android/coremobile/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/y;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;Lcom/milkmangames/extensions/android/coremobile/y;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/u;->c:Lcom/milkmangames/extensions/android/coremobile/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/coremobile/u;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    iput-object p3, p0, Lcom/milkmangames/extensions/android/coremobile/u;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Editor action finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/u;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    invoke-virtual {v0, v3}, Lcom/milkmangames/extensions/android/coremobile/y;->a(Z)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/u;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    iget-object v0, v0, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/u;->c:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/u;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    iget-object v1, v1, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/u;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return v3
.end method
