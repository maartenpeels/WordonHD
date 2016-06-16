.class public final Lcom/milkmangames/extensions/android/iab/a;
.super Lcom/adobe/fre/FREContext;


# instance fields
.field private a:Lcom/milkmangames/extensions/android/iab/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-string v0, "[IABExtension]"

    const-string v1, "IAB.init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v1, "[IABExtension]"

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    if-eqz v0, :cond_0

    const-string v0, "[IABExtension]"

    const-string v0, "Billing already initalized."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "[IABExtension]"

    const-string v0, "Start Service Connection.."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/iab/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lc/m/x/a/iab/u;

    invoke-direct {v2, p0}, Lc/m/x/a/iab/u;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-direct {v0, v1, v2}, Lcom/milkmangames/extensions/android/iab/i;-><init>(Landroid/app/Activity;Lc/m/x/a/iab/z;)V

    iput-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v0, p1}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/iab/i;->b()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v0, p1, p2}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[IABExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inventory Sku request \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v1, p1, v0, p3}, Lcom/milkmangames/extensions/android/iab/i;->a(ZLjava/util/List;I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/iab/i;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/a;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/iab/i;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 2

    const-string v0, "[IABExtension]"

    const-string v1, "context disposal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/iab/a;->b()V

    return-void
.end method

.method public final getFunctions()Ljava/util/Map;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ffiInitIAB"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/d;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/d;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiPurchaseItem"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/f;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/f;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiLoadInventory"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/e;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/e;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShutdown"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/g;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/g;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiStartBillingService"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/h;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/h;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiAreSubscriptionsSupported"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/b;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/b;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiConsumeItem"

    new-instance v2, Lcom/milkmangames/extensions/android/iab/c;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/iab/c;-><init>(Lcom/milkmangames/extensions/android/iab/a;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
