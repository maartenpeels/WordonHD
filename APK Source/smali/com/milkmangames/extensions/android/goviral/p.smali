.class final Lcom/milkmangames/extensions/android/goviral/p;
.super Lcom/milkmangames/extensions/android/goviral/b$d;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/p;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/b$d;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/p;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v0

    return-object v0
.end method
