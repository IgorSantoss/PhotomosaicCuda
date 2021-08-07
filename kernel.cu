﻿#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>
#include <iostream>
#include <math.h>

#include <opencv2/core.hpp>
#include <opencv2/core/cuda.hpp>
#include <opencv2/imgcodecs.hpp>

using namespace std;
using namespace cv;

#define MAX 32

__global__ void grayAvrgKernel(unsigned char* input, int width, int height, int colorWidthStep) {
	
}

void grayAvrg(Mat* image, int bx, int by) {
	dim3 blocks(0, 0);
	blocks.x = ceil((float)image->rows / (float)MAX);
	blocks.y = ceil((float)image->cols / (float)MAX);

	if (bx > blocks.x) {
		blocks.x = bx;
	}

	if (by > blocks.y) {
		blocks.y = by;
	}
	
}

int main(int argc, char** argv) {
	if (argc < 2) {
		cout << "insira o nome do arquivo" << endl;
		return 1;
	}

	Mat image = imread(argv[1]);

	if (image.empty()) {
		cout << "imagem não encontrada" << endl;
		return 1;
	}

	

}