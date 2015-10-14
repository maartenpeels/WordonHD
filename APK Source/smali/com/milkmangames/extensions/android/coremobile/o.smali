.class final Lcom/milkmangames/extensions/android/coremobile/o;
.super Lcom/milkmangames/extensions/android/coremobile/x;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/o;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/coremobile/x;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/o;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;I)V

    const/4 v0, 0x0

    return-object v0
.end method
