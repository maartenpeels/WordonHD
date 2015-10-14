.class final Lcom/milkmangames/extensions/android/coremobile/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/y;

.field final synthetic b:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;Lcom/milkmangames/extensions/android/coremobile/y;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/r;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/coremobile/r;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "On Click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/r;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/y;->a(Z)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/r;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    iget-object v0, v0, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/r;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/r;->a:Lcom/milkmangames/extensions/android/coremobile/y;

    iget-object v1, v1, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
