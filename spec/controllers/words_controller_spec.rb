require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WordsController do
	login_admin


  # This should return the minimal set of attributes required to create a valid
  # Word. As you add validations to Word, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "khmer" => "MyString", "english" => "mystring" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WordsController. Be sure to keep this updated too.


  

  describe "GET show" do
    it "assigns the requested word as @word" do
      word = Word.create! valid_attributes
      get :show, {:id => word.to_param}
      assigns(:word).should eq(word)
    end
  end

  describe "GET new" do
    it "assigns a new word as @word" do
      get :new, {}
      assigns(:word).should be_a_new(Word)
    end
  end

  describe "GET edit" do
    it "assigns the requested word as @word" do
      word = Word.create! valid_attributes
      get :edit, {:id => word.to_param}
      assigns(:word).should eq(word)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Word" do
        expect {
          post :create, {:word => valid_attributes}
        }.to change(Word, :count).by(1)
      end

      it "assigns a newly created word as @word" do
        post :create, {:word => valid_attributes}
        assigns(:word).should be_a(Word)
        assigns(:word).should be_persisted
      end

      it "redirects to the created word" do
        post :create, {:word => valid_attributes}
        response.should redirect_to(Word.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved word as @word" do
        # Trigger the behavior that occurs when invalid params are submitted
        Word.any_instance.stub(:save).and_return(false)
        post :create, {:word => { "khmer" => "invalid value" }}
        assigns(:word).should be_a_new(Word)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Word.any_instance.stub(:save).and_return(false)
        post :create, {:word => { "khmer" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested word" do
        word = Word.create! valid_attributes
        # Assuming there are no other words in the database, this
        # specifies that the Word created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Word.any_instance.should_receive(:update_attributes).with({ "khmer" => "MyString" })
        put :update, {:id => word.to_param, :word => { "khmer" => "MyString" }}
      end

      it "assigns the requested word as @word" do
        word = Word.create! valid_attributes
        put :update, {:id => word.to_param, :word => valid_attributes}
        assigns(:word).should eq(word)
      end

      it "redirects to the word" do
        word = Word.create! valid_attributes
        put :update, {:id => word.to_param, :word => valid_attributes}
        response.should redirect_to(word)
      end
    end

    describe "with invalid params" do
      it "assigns the word as @word" do
        word = Word.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Word.any_instance.stub(:save).and_return(false)
        put :update, {:id => word.to_param, :word => { "khmer" => "invalid value" }}
        assigns(:word).should eq(word)
      end

      it "re-renders the 'edit' template" do
        word = Word.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Word.any_instance.stub(:save).and_return(false)
        put :update, {:id => word.to_param, :word => { "khmer" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested word" do
      word = Word.create! valid_attributes
      expect {
        delete :destroy, {:id => word.to_param}
      }.to change(Word, :count).by(-1)
    end

    it "redirects to the words list" do
      word = Word.create! valid_attributes
      delete :destroy, {:id => word.to_param}
      response.should redirect_to(words_url)
    end
  end
end

