.class Lcom/android/keyguard/KeyguardSimPukView$1$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$1;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$result:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1002(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$result:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$attemptsRemaining:I

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$700(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->val$attemptsRemaining:I

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$800(Lcom/android/keyguard/KeyguardSimPukView;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
