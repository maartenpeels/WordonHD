.class final Lc/m/x/a/iab/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lc/m/x/a/iab/n;

.field final synthetic b:Lc/m/x/a/iab/d;


# direct methods
.method constructor <init>(Lc/m/x/a/iab/d;Lc/m/x/a/iab/n;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    iput-object p2, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    iget-object v0, v0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    iget-object v1, v1, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    new-instance v2, Lc/m/x/a/iab/p;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lc/m/x/a/iab/n;->a(Lc/m/x/a/iab/p;)V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/m/x/a/iab/d;->d:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In-app billing version 3 supported for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    iget-object v1, v1, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/m/x/a/iab/d;->d:Z

    :goto_1
    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/m/x/a/iab/d;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    new-instance v1, Lc/m/x/a/iab/p;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lc/m/x/a/iab/n;->a(Lc/m/x/a/iab/p;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/m/x/a/iab/e;->a:Lc/m/x/a/iab/n;

    new-instance v2, Lc/m/x/a/iab/p;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lc/m/x/a/iab/n;->a(Lc/m/x/a/iab/p;)V

    :cond_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/e;->b:Lc/m/x/a/iab/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
