.class public final Lcom/milkmangames/extensions/android/iab/i;
.super Lc/m/x/a/iab/x;

# interfaces
.implements Lc/m/x/a/iab/y;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:Ljava/lang/String;


# instance fields
.field k:Lc/m/x/a/iab/d;

.field l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BILLING_CONNECTION_FAILED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->a:Ljava/lang/String;

    const-string v0, "BILLING_CONNECTION_READY"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->b:Ljava/lang/String;

    const-string v0, "LOAD_INVENTORY_FAILED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->c:Ljava/lang/String;

    const-string v0, "INVENTORY_LOADED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->d:Ljava/lang/String;

    const-string v0, "PURCHASE_SUCCEEDED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->e:Ljava/lang/String;

    const-string v0, "PURCHASE_FAILED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->f:Ljava/lang/String;

    const-string v0, "CONSUME_SUCCEEDED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->g:Ljava/lang/String;

    const-string v0, "CONSUME_FAILED"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->h:Ljava/lang/String;

    const v0, 0x1d4d5

    sput v0, Lcom/milkmangames/extensions/android/iab/i;->i:I

    const-string v0, "[MmgBilling2]"

    sput-object v0, Lcom/milkmangames/extensions/android/iab/i;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lc/m/x/a/iab/z;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lc/m/x/a/iab/x;-><init>(Landroid/app/Activity;Lc/m/x/a/iab/z;)V

    invoke-interface {p2, p0}, Lc/m/x/a/iab/z;->a(Lc/m/x/a/iab/y;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->l:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/iab/i;Lc/m/x/a/iab/r;)V
    .locals 4

    invoke-virtual {p1}, Lc/m/x/a/iab/r;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/i;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating sku:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/i;->l:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/m/x/a/iab/d;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lc/m/x/a/iab/d;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/i;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc/m/x/a/iab/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    new-instance v1, Lcom/milkmangames/extensions/android/iab/j;

    invoke-direct {v1, p0}, Lcom/milkmangames/extensions/android/iab/j;-><init>(Lcom/milkmangames/extensions/android/iab/i;)V

    invoke-virtual {v0, v1}, Lc/m/x/a/iab/d;->a(Lc/m/x/a/iab/n;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/iab/r;

    new-instance v1, Lcom/milkmangames/extensions/android/iab/m;

    invoke-direct {v1, p0, p2, p1}, Lcom/milkmangames/extensions/android/iab/m;-><init>(Lcom/milkmangames/extensions/android/iab/i;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    invoke-virtual {v2, v0, v1}, Lc/m/x/a/iab/d;->a(Lc/m/x/a/iab/r;Lc/m/x/a/iab/k;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/milkmangames/extensions/android/iab/i;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The item \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not previously loaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lc/m/x/a/iab/p;)V
    .locals 2

    invoke-virtual {p2}, Lc/m/x/a/iab/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc/m/x/a/iab/p;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v5, Lcom/milkmangames/extensions/android/iab/l;

    invoke-direct {v5, p0, p4}, Lcom/milkmangames/extensions/android/iab/l;-><init>(Lcom/milkmangames/extensions/android/iab/i;I)V

    :try_start_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/i;->m:Landroid/app/Activity;

    sget v4, Lcom/milkmangames/extensions/android/iab/i;->i:I

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lc/m/x/a/iab/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILc/m/x/a/iab/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/milkmangames/extensions/android/iab/i;->f:Ljava/lang/String;

    const-string v1, "A purchase is already in progress"

    const/16 v2, 0x24ee

    invoke-virtual {p0, v0, v1, v2}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to connect:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v0, v2}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(ZLjava/util/List;I)V
    .locals 4

    new-instance v0, Lcom/milkmangames/extensions/android/iab/k;

    invoke-direct {v0, p0, p3}, Lcom/milkmangames/extensions/android/iab/k;-><init>(Lcom/milkmangames/extensions/android/iab/i;I)V

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Query inventory internal on \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' items, extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    invoke-virtual {v1, p1, p2, v0}, Lc/m/x/a/iab/d;->a(ZLjava/util/List;Lc/m/x/a/iab/o;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    invoke-virtual {v0}, Lc/m/x/a/iab/d;->b()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/m/x/a/iab/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/i;->k:Lc/m/x/a/iab/d;

    invoke-virtual {v0}, Lc/m/x/a/iab/d;->a()V

    :cond_0
    return-void
.end method
